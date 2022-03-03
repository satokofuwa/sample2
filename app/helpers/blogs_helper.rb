module BlogsHelper

    def choose_new_or_edit
        if action_name == 'new' || action_name == 'create'
         confirm_blogs_path
       elsif action_name == 'edit'
         blog_path
        end
    end

    def confirm_new_or_edit #　確認画面表示　新規作成　
      unless @blog.id?      #　IDがないなら　indexへ
         blogs_path
      else
         blog_path          #　IDあるなら　　showへ I
      end
   end

    def confirm_form_method
      @blog.id ? 'patch' : 'post'
    end
end
