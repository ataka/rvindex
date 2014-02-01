class Name < ActiveRecord::Base
  validates :last,   presence: true, length: { maximum: 255 }
  validates :first,  length: { maximum: 255 }
  validates :suffix, length: { maximum: 32 }

  def create
    Name.create(name_params)
  end

  private

  def name_params
    params.require(:name).permit(:last, :first, :suffix)
  end
end
