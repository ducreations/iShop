module ShoesHelper
  def user_action(shoe)
    if current_user&.admin
      link_to 'Edit', edit_shoe_path(shoe)
    else
      link_to 'Add to cart', carts_path
    end
  end

  def current_user_action
    if current_user&.admin
      link_to 'Add shoes', new_shoe_path
    else
      link_to 'Shopping cart', carts_path
    end
  end
end
