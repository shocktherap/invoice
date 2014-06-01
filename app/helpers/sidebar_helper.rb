module SidebarHelper
  def side_menu
    [
      { controller: 'home', icon: 'display', title: 'Dashboard', url: 'root_path' } ,
      { controller: 'companies', icon: 'sheriffs_star', title: 'Perusahaan', url: 'new_company_path' },
      { controller: 'customers', icon: 'parents', title: 'Pelanggan', url: 'customers_path' },
      { controller: 'billings', icon: 'credit_card', title: 'Invoice', url: 'billings_path' }
    ]
  end

end
