module ApplicationHelper

    # ページごとの完全なタイトルを返します。
    def full_title(page_title = '') #メソッド引数ありver.
      #puts "\n\npage_title->#{page_title}\n\n" #エラーテストコード
      base_title = "Ruby on Rails Tutorial Sample App" #代入
      if page_title.empty? #条件分岐。もしpage_titleに何もなければ
        base_title #"Ruby on Rails Tutorial Sample App"表示
      else #page_titleに何か書いてあれば
        page_title + " | " + base_title #書かれている内容+ | +Ruby on Rails Tutorial Sample App表示
      end
    end
end
