using Android.Content;
using Android.Content.PM;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace AppTracker
{
    public class Class1
    {
        public static List<ResolveInfo> MYAPP { get{ return MYAPP; } set{ } }

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
        public void myapplaunch()
        {

            //var apps = Android.App.Application.Context.PackageManager.GetInstalledApplications(PackageInfoFlags.MatchAll);
            //var apps = Android.App.Application.Context.PackageManager.GetInstalledApplications(PackageInfoFlags.Gids);

            //Intent intent = new Intent(Intent.ActionMain, null);
            //intent.AddCategory(Intent.CategoryLauncher);
            //System.Collections.Generic.IList<ApplicationInfo> apps = Android.App.Application.Context.PackageManager.QueryIntentActivities(intent, PackageManager.);
            Intent intent = new Intent(Intent.ActionMain, null);
            intent.AddCategory(Intent.CategoryLauncher);
            List<ResolveInfo> apps = Android.App.Application.Context.PackageManager.QueryIntentActivities(intent, PackageManager.);

            MYAPP = apps;
            APP1 = apps[1].PackageName;
            APP2 = apps[2].PackageName;
            APP3 = apps[3].PackageName;
            APP4 = apps[4].PackageName;
            APP5 = apps[5].PackageName;
            APP6 = apps[0].PackageName;

            num1 = apps[1].PackageName;
            num2 = apps[2].PackageName;
            num3 = apps[3].PackageName;
            num4 = apps[4].PackageName;
            num5 = apps[5].PackageName;
            num6 = apps[0].PackageName;

            var app1 = apps[1].PackageName.Split('.').Length - 1;
            var app2 = apps[2].PackageName.Split('.').Length - 1;
            var app3 = apps[3].PackageName.Split('.').Length - 1;
            var app4 = apps[4].PackageName.Split('.').Length - 1;
            var app5 = apps[5].PackageName.Split('.').Length - 1;
            var app6 = apps[0].PackageName.Split('.').Length - 1;

            APP1NAME = apps[1].PackageName.Split('.')[app1];
            APP2NAME = apps[2].PackageName.Split('.')[app2];
            APP3NAME = apps[3].PackageName.Split('.')[app3];
            APP4NAME = apps[4].PackageName.Split('.')[app4];
            APP5NAME = apps[5].PackageName.Split('.')[app5];
            APP6NAME = apps[0].PackageName.Split('.')[app6];

            /*APP1ICON = apps[6].LoadLabel(Android.App.Application.Context.PackageManager);
            APP2ICON = apps[1].LoadLabel(Android.App.Application.Context.PackageManager);
            APP3ICON = apps[2].LoadLabel(Android.App.Application.Context.PackageManager);
            APP4ICON = apps[3].LoadLabel(Android.App.Application.Context.PackageManager);
            APP5ICON = apps[4].LoadLabel(Android.App.Application.Context.PackageManager);
            APP6ICON = apps[5].LoadLabel(Android.App.Application.Context.PackageManager);
*/
        }
    }
}


