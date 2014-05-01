module SidebarHelper
  def side_menu
    [
      { controller: 'home', icon: 'display', title: 'Dashboard', url: 'root_path' } ,
      { controller: 'companies', icon: 'sheriffs_star', title: 'Perusahaan', url: 'new_company_path' },
      { controller: 'customers', icon: 'parents', title: 'Pelanggan', url: 'customers_path' }
    ]
  end

end
