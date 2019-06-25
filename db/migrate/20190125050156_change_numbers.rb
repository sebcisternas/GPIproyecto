class ChangeNumbers < ActiveRecord::Migration[5.2]
  def change
    change_column :informes, :nota1, :integer
    change_column :informes, :nota2, :integer
    change_column :informes, :nota3, :integer
    change_column :informes, :nota4, :integer
    change_column :informes, :nota5, :integer
    change_column :informes, :nota6, :integer
    change_column :informes, :nota7, :integer
    change_column :informes, :nota8, :integer
    change_column :informes, :nota9, :integer
    change_column :informes, :nota10, :integer

    change_column :informes, :nota11, :integer
    change_column :informes, :nota12, :integer
    change_column :informes, :nota13, :integer
    change_column :informes, :nota14, :integer
    change_column :informes, :nota15, :integer
    
  end
end
