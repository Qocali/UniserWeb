﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UniserWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >

   <div id="res">
<div  class="banner-area-wrapper mt-10">
    <div class="banner-area text-center">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="banner-content-wrapper">
                        <div class="banner-content">
                            <h2>Bizim Mehsullar</h2>
                            <img src="img/logo.jpg" alt="title">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Area End -->
<!-- product Start -->
<div class="teacher-area pb-50">
    <div class="container">
        <div class="row">
           
            
            <div class="col-xs-12">
                <div class="section-title text-center">
                    <h2>Mehsullarmizla tanis olun</h2>
                    <a href="Create.aspx"
                            data-te-ripple-init
                            data-te-ripple-color="light"
                            class="flex items-center rounded bg-primary px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-md transition duration-150 ease-in-out hover:bg-primary-700 hover:shadow-lg focus:bg-primary-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-primary-800 active:shadow-lg">Yeni Mehsul Yarat
                        <svg xmlns="http://www.w3.org/2000/svg"
                             viewBox="0 0 24 24"
                             fill="currentColor"
                             class="mr-1 h-4 w-4">
                            <path fill-rule="evenodd"
                                  d="M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zm-6.75-10.5a.75.75 0 00-1.5 0v4.19l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V10.5z"
                                  clip-rule="evenodd" />
                        </svg>
                     
                    </a>
                </div>
            </div>
        </div>

        <div class="teacher-area pt-150 pb-105">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="course-title">
                            <h3>istediyniz mehsulu Modelne gore</h3>
                        </div>
                       <div class="form-group ">
        <select runat="server" style="margin-bottom:40px;margin-top:30px;" id="category" class="form-control" name="CatId">
         <option>Bmw</option>
         <option>Audi</option>

        </select>
                            <button class="btn btn-success" onclick="Buttoncat_Click" runat="server" Text="Submit"/>Yoxla
                            
                        </div>
                        
                    </div>
                    <div class="col-xs-12">
                        <div class="course-title">
                            <h3>Mehsulu Markaya Gore axtarin</h3>
                        </div>
                        <div class="form-group ">
                            
                            <select style="!important margin-bottom:40px;!important margin-top:30px;" id="marka" class="form-control" name="CatId">
                                 <option>Tayota</option>
         <option>Land-Cruser</option>
                            </select>
                            
                        </div>
                       
                    </div>
                    <div class="col-xs-12">
                        <div class="course-title">
                            <h3>istediyniz mehsulu Iline gore axtarin</h3>
                        </div>
                        <div class="form-group ">
                            
                            <select style=" margin-bottom:40px; margin-top:30px;" id="year" class="form-control" name="year">
                                  <option>2021</option>
         <option>2022</option>
                            </select>
                        </div>

                        <div class="col-xs-12">
                        <div class="course-title">
                            <h3>istediyniz mehsulu Iline gore axtarin</h3>
                        </div>
                        <div class="form-group ">
                            
                            <select style="!important margin-bottom:40px;!important margin-top:30px;" id="year" class="form-control" name="year">
                                @foreach (var item in ViewBag.Year)
                                {

                                    if (a.Contains(item.ToString("yyyy")))
                                    {
                                        continue;
                                    }

                                    <option value="@item.ToString("yyyy")">@item.ToString("yyyy")</option>
                                    a += @item.ToString("yyyy");
                                }

                            </select>
                        </div>

                        <form method="post" id="getData">
                            <div class="grid gap-6 mb-6 md:grid-cols-2">
                                <div>
                                    <label for="MinValue" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Minimum qiymet</label>
                                    <input type="text" id="minvalue" class="bg-gray-50 border border-gray-300 text-black text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-white-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Min" required>
                                </div>
                                <div>
                                    <label for="MaxValue" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Maxmum qiymet</label>
                                    <input type="text"  id="Maxvalue" class="bg-gray-50 border border-gray-300 text-black text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-white-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Max" required>
                                </div>
                               
                               
                            <button type="button" id="button" class="btn btn-success">Tap</button>
                        </form>
                        <div class="course-form">
                            <form>
                                <input id="productsearch" type="text" placeholder="Search..." />
                            </form>
                        </div>
                    </div>
                   
                </div>
                    <asp:Repeater id="Turbo_Product" runat="server">
                        <ItemTemplate>
                <div class="row" id="MyProducts" SelectMethod="productsGrid_GetData">
                     
 
                        <div class="col-md-3 col-sm-4 col-xs-12">
                            <div class="single-teacher mb-45">
                                <div class="single-teacher-img">
                                    <a asp-route-id="@product.Id" asp-controller="Home" asp-action="Detail">
                                        
                                           <asp:Image ID="Image1" runat="server" ImageUrl="https://media.ed.edmunds-media.com/bmw/x1/2023/oem/2023_bmw_x1_4dr-suv_xdrive28i_fq_oem_1_815.jpg" />
                                            
                                    </a>
                                </div>
                                <div class="single-teacher-content text-center">
                                    <h2><a href="Details.aspx"><%# Eval("Name") %></a></h2>
                                         <h2><a href="#"><%# Eval("SubName") %></a></h2>
                                    <h4>Good</h4>
                                    <ul>
                                            <li><a href="#"><i class="fa-brands fa-square-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa-brands fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa-brands fa-square-instagram"></i></a></li>
                                        <li><a href="#"><i class="fa-brands fa-linkedin"></i></a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>

                 
                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                  <asp:DataGrid ID="DataGrid1" runat="server">  
        </asp:DataGrid>  
                <div class="row" id="pagination">
                    <div class="col-xs-12">
                        <div class="pagination">
                            <ul>
                                  <asp:Repeater id="Repeater1" runat="server">
                        <ItemTemplate>
                                 
                                        <li  style="z-index:3;color:#fff;background-color:#007bff;border-color:#007bff;" class="page-item active disabled">
                                            <a id="pagenation" class="page-link">1</a>
                                        </li>
                                    
                                        <li class="page-item ">
                                            <a class="page-link" asp-controller="Home" asp-action="Index" asp-route-page="@i">@i</a>
                                        </li>
                                 </ItemTemplate>
                        </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
<!-- Product End -->
</div>

</asp:Content>
