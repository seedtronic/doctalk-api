class FillDoctorsCrm < ActiveRecord::Migration[5.1]
  def up
    index = 0
    Doctor.find_each do |doctor|
      doctor.update!(crm: "SP 123#{index}")
      index += 1
    end
  end

  def down
  end
end
