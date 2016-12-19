module WorkImage
  extend ActiveSupport::Concern

  include WorkHelper

  # display image by index for searched theme
  def show_image(theme_id, image_index)
    theme_images = Image.theme_images(theme_id)
    logger.info "Theme ID: #{theme_id}"
    logger.info "Theme length: #{theme_images.to_s}"
    one_image_attr = theme_images[image_index].attributes
    image_id = one_image_attr["id"]
    logger.info "In show_image: one_image_attr = #{one_image_attr.inspect}"
    data = {index:image_index,
           # values_qty:values_qty,
            #current_user_id:current_user_id,
            theme_id:theme_id,
            images_arr_size:theme_images.size,
            image_id:image_id,
            name:one_image_attr["name"],
            file:one_image_attr["file"],
           # user_valued:user_valued,
            #value:value,
            #common_ave_value:common_ave_value
    }
    logger.info "In show_image: data = #{data.inspect}"
    data
  end
end