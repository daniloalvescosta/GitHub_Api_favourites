# frozen_string_literal: true

module HomeHelper
    def verify_favorite(repository)
        @favorites = Favorite.all

        @favorites.each do |favorite|
            if favorite.name == repository['name'] && favorite.owner == repository['owner']['login']
                return true
            else
                return false
            end
        end
    end
end
