module ApplicationHelper

    # Returns the Gravatar URL for the given user.
    def gravatar_url_for(profile)
        if profile.image.present?
            # gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
            # gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
            # return gravatar_url
            return url_for(profile.image)
        end
        image_path("default_user.png")
    end

end
