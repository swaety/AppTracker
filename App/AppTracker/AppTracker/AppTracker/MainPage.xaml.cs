using Android.Content.PM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace AppTracker
{
	public partial class MainPage : ContentPage
	{
		public MainPage()
		{
            var apps = Android.App.Application.Context.PackageManager.GetInstalledApplications(PackageInfoFlags.MatchAll);
            var app1 = apps[0].LoadLabel(Android.App.Application.Context.PackageManager);
            var app2 = apps[1].LoadLabel(Android.App.Application.Context.PackageManager);
            var app3 = apps[2].LoadLabel(Android.App.Application.Context.PackageManager);
            var app4 = apps[3].LoadLabel(Android.App.Application.Context.PackageManager);
            var app5 = apps[4].LoadLabel(Android.App.Application.Context.PackageManager);
            var app6 = apps[5].LoadLabel(Android.App.Application.Context.PackageManager);

            var iconapp1 = apps[0].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp2 = apps[1].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp3 = apps[2].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp4 = apps[3].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp5 = apps[4].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp6 = apps[5].LoadLabel(Android.App.Application.Context.PackageManager);

            Console.Write(app1);
            Console.Write(app2);
            Console.Write(app3);
            Console.Write(app4);
            Console.Write(app5);
            Console.Write(app6);

            InitializeComponent();
		}
	}
}