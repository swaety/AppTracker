using Android.Content;
using Android.Content.PM;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace AppTracker
{
    public class Class1
    {
        public String APP1 { get { return APP1; } set { } }
        public String APP2 { get { return APP2; } set { } }
        public String APP3 { get { return APP3; } set { } }
        public String APP4 { get { return APP4; } set { } }
        public String APP5 { get { return APP5; } set { } }
        public String APP6 { get { return APP6; } set { } }

        public static String num1 = "blabla";
        public static String num2 = "blabla";
        public static String num3 = "blabla";
        public static String num4 = "blabla";
        public static String num5 = "blabla";
        public static String num6 = "blabla";

        public String APP1NAME { get; set; }
        public String APP2NAME { get; set; }
        public String APP3NAME { get; set; }
        public String APP4NAME { get; set; }
        public String APP5NAME { get; set; }
        public String APP6NAME { get; set; }

        public String APP1ICON { get; set; }
        public String APP2ICON { get; set; }
        public String APP3ICON { get; set; }
        public String APP4ICON { get; set; }
        public String APP5ICON { get; set; }
        public String APP6ICON { get; set; }

        public Class1()
        {
            myapplaunch();
        }
        public static IList<ApplicationInfo> getAllInstalledApplications()
        {
            IList<ApplicationInfo> installedApps = Android.App.Application.Context.PackageManager.GetInstalledApplications(PackageInfoFlags.MatchAll);
            IList<ApplicationInfo> launchableInstalledApps = new List<ApplicationInfo>();
            for (int i = 0; i < installedApps.Count; i++)
            {
                if ((Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(installedApps[i].PackageName) != null) && (!installedApps[i].PackageName.Contains("AppTracker")))
                {
                    launchableInstalledApps.Add(installedApps[i]);
                }
            }
            return launchableInstalledApps;
        }
        public void myapplaunch()
        {

            IList<ApplicationInfo> apps = getAllInstalledApplications();

            APP1 = apps[0].PackageName;
            APP2 = apps[1].PackageName;
            APP3 = apps[2].PackageName;
            APP4 = apps[3].PackageName;
            APP5 = apps[4].PackageName;
            APP6 = apps[5].PackageName;

            num1 = apps[0].PackageName;
            num2 = apps[1].PackageName;
            num3 = apps[2].PackageName;
            num4 = apps[3].PackageName;
            num5 = apps[4].PackageName;
            num6 = apps[5].PackageName;

            var app1 = apps[0].PackageName.Split('.').Length - 1;
            var app2 = apps[1].PackageName.Split('.').Length - 1;
            var app3 = apps[2].PackageName.Split('.').Length - 1;
            var app4 = apps[3].PackageName.Split('.').Length - 1;
            var app5 = apps[4].PackageName.Split('.').Length - 1;
            var app6 = apps[5].PackageName.Split('.').Length - 1;

            APP1NAME = apps[0].PackageName.Split('.')[app1];
            APP2NAME = apps[1].PackageName.Split('.')[app2];
            APP3NAME = apps[2].PackageName.Split('.')[app3];
            APP4NAME = apps[3].PackageName.Split('.')[app4];
            APP5NAME = apps[4].PackageName.Split('.')[app5];
            APP6NAME = apps[5].PackageName.Split('.')[app6];

        }
    }
}


