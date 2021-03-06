﻿using project_sem_3_api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace project_sem_3_api.Controllers
{
    public class RoutesController : ApiController
    {
        private MyDatabaseContext db = new MyDatabaseContext();
        // GET: api/Route
        public IEnumerable<dynamic> Get(int StartStation, int EndStation)
        {
            var result = from s in (
                            from s1 in db.TrainStations.Cast<TrainStation>()
                            where s1.IdStation == StartStation
                            select new
                            {
                                s1.Id,
                                TrainId = s1.IdTrain,
                                IdStartStaion = s1.IdStation,
                                StartTime = s1.ArrivalTime,
                                StartIndex = s1.IndexNumber
                            }
                        )
                         join e in (
                             from e1 in db.TrainStations.Cast<TrainStation>()
                             where e1.IdStation == EndStation
                             select new
                             {
                                 e1.Id,
                                 TrainId = e1.IdTrain,
                                 IdEndStaion = e1.IdStation,
                                 EndTime = e1.ArrivalTime,
                                 EndIndex = e1.IndexNumber
                             }
                             ) on s.TrainId equals e.TrainId
                         join t in db.Trains on s.TrainId equals t.Id
                         where e.EndIndex > s.StartIndex
                         select new
                         {
                             TrainId = t.Id,
                             TrainCode = t.Code,
                             IdStartTrainStation = s.Id,
                             IdEndTrainStation = e.Id,
                             s.StartIndex,
                             e.EndIndex,
                             s.IdStartStaion,
                             e.IdEndStaion,
                             s.StartTime,
                             e.EndTime,
                             TravelTime = e.EndTime - s.StartTime,
                             Points = (
                                 from ts in db.TrainStations
                                 join st in db.Stations on ts.IdStation equals st.Id
                                 where ts.IdTrain == t.Id
                                 && ts.IndexNumber >= s.StartIndex
                                 && ts.IndexNumber <= e.EndIndex
                                 select new
                                 {
                                     IdStation = st.Id,
                                     ts.ArrivalTime,
                                     NameStation = st.Name,
                                     ts.DistancePreStation
                                 }
                           ).ToList()
                         };

            return result;
        }

        // GET: api/Route/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Route
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Route/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Route/5
        public void Delete(int id)
        {
        }
    }
}
