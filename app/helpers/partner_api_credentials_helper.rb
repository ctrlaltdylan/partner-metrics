module PartnerApiCredentialsHelper
  def partner_api_credential_path_for(current_user)
    if current_user.partner_api_credential&.persisted?
      edit_partner_api_credential_path(current_user.partner_api_credential)
    else
      new_partner_api_credential_path
    end
  end
end
