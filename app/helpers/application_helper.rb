module ApplicationHelper
  def find_all_models
    #iterate over all files in folder
    folder = File.join(RAILS_ROOT, "app", "models")
    Dir[File.join(folder,"*")].each do |filename|
      # remove .rb
      model_name = File.basename(filename).sub(/.rb$/,'').capitalize
      model = Kernel.const_get(model_name)
    end
  end
end
