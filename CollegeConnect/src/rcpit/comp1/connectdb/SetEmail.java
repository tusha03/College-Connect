package rcpit.comp1.connectdb;

public class SetEmail 
{
		static String uemail;
		
		public static String getUemail() 
		{
			return uemail;
		}
		public static void setUemail(String uemail) 
		{
			SetEmail.uemail = uemail;
		}
		
		static int uid;
		public static int getUid()
		{
			return uid;
		}
		public static void setUid(int uid)
		{
			SetEmail.uid = uid;
		}
		
		static int jobid;
		public static int getJobid()
		{
			return jobid;
		}
		public static void setJobid(int jobid)
		{
			SetEmail.jobid = jobid;
		}
}
