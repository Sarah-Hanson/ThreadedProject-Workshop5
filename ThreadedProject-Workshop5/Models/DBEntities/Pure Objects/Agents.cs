﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThreadedProject_Workshop5.Models.DBEntities {
    public class Agency {
        public string AgentId { get; set; }
        public string AgtFirstName { get; set; }
        public string AgtMiddleInitial { get; set; }
        public string AgtLastName { get; set; }
        public string AgtBusPhone { get; set; }
        public string AgtEmail { get; set; }
        public string AgtPosition { get; set; }
        public string AgencyId { get; set; }
    }
}