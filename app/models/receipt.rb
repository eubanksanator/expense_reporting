class Receipt < ActiveRecord::Base
   has_attached_file :doc_url, styles: { medium: "300x300>", thumb: "100x100>" }
end
