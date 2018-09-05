using System;

using Xamarin.Forms;

namespace TestingApp.ViewModels
{
    public class ItemsDeleteView : ContentPage
    //public class ItemDetailViewModel : BaseViewModel
    {
        public ItemsDeleteView()
        {
            Content = new StackLayout
            {
                Children = {
                    new Label { Text = "Hello ContentPage" }
                }
            };
        }
    }
}

