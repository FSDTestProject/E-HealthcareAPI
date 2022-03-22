using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PracticeAPI_Project.Models;

namespace PracticeAPI_Project.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartsController : ControllerBase
    {
        private readonly ABCHealthCareContext _context;

        public CartsController(ABCHealthCareContext context)
        {
            _context = context;
        }

        // GET: api/Carts
        //[HttpGet]
        //public async Task<ActionResult<IEnumerable<Cart>>> GetCarts()
        //{
        //    return await _context.Carts.ToListAsync();
        //}

        // GET: api/Carts/5
        [HttpGet]
        [Route("GetByUserID")]
        public ActionResult<Cart> GetByUserID(int id)
        {
            var cart = _context.Carts.FirstOrDefault(x => x.UserId.Equals(id));
            if (cart == null)
            {
                return NotFound();
            }

            return cart;
        }

        // PUT: api/Carts/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        //[HttpPut("{id}")]
        //public async Task<IActionResult> PutCart(int id, Cart cart)
        //{
        //    if (id != cart.CartId)
        //    {
        //        return BadRequest();
        //    }

        //    _context.Entry(cart).State = EntityState.Modified;

        //    try
        //    {
        //        await _context.SaveChangesAsync();
        //    }
        //    catch (DbUpdateConcurrencyException)
        //    {
        //        if (!CartExists(id))
        //        {
        //            return NotFound();
        //        }
        //        else
        //        {
        //            throw;
        //        }
        //    }

        //    return NoContent();
        //}



        // POST: api/Carts
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        [Route("Add")]
        public async Task<ActionResult<CartItem>> Add(CartItem cartitem)
        {
            _context.CartItems.Add(cartitem);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CartItemExists(cartitem.CartId)) 
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCart", new { id = cartitem.CartId }, cartitem);
        }

        private bool CartItemExists(int cartId)
        {
            return _context.CartItems.Any(e => e.CartId == cartId);
        }

        //// DELETE: api/Carts/5
        //[HttpDelete("{id}")]
        //public async Task<IActionResult> DeleteCart(int id)
        //{
        //    var cart = await _context.Carts.FindAsync(id);
        //    if (cart == null)
        //    {
        //        return NotFound();
        //    }

        //    _context.Carts.Remove(cart);
        //    await _context.SaveChangesAsync();

        //    return NoContent();
        //}

        private bool CartExists(int id)
        {
            return _context.Carts.Any(e => e.CartId == id);
        }
    }
}
