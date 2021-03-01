using System.Collections.Generic;
using System.Threading.Tasks;
using ApplicationTier.Domain.Entities;
using ApplicationTier.Domain.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace ApplicationTier.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WorkController : ControllerBase
    {
        private readonly IWorkService _workService;
        public WorkController(IWorkService workService)
        {
            _workService = workService;
        }

        #region CRUD

        [HttpGet]
        public async Task<IList<Work>> GetAll()
        {
            return await _workService.GetAll();
        }

        [HttpPut]
        public async Task Update(Work work)
        {
            await _workService.Update(work);
        }

        [HttpGet("{id:int}")]
        public async Task<Work> GetOne([FromRoute] int id)
        {
            return await _workService.GetOne(id);
        }

        [HttpPost]
        public async Task Add(Work work)
        {
            await _workService.Add(work);
        }

        [HttpDelete("{id}")]
        public async Task Delete([FromRoute] int id)
        {
            await _workService.Delete(id);
        }

        #endregion
    }
}
