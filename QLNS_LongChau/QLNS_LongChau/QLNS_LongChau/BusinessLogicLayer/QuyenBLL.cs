using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLNS_LongChau.BusinessLogicLayer
{
    class QuyenBLL
    {
        DataAccessLayer.QuyenDAL quyenDAL = new DataAccessLayer.QuyenDAL();

        public DataTable layDSQuyen()
        {
            return quyenDAL.layDSQuyen();
        }
    }
}
