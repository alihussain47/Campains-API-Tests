class CampaignTag < ApplicationRecord
  belongs_to :campaign
  belongs_to :tag
end
