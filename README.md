![Guestbook](https://user-images.githubusercontent.com/59432666/128343662-e58adbd3-4e7a-4506-808d-63dbc61c0390.png)
# <p align="center"> Guestbook</p>

<p>
본 저장소에는 Ruby on Rails를 사용한 간단한 방명록 남기기 페이지입니다. MVC 구조와 REST API를 이용한 CRUD 기능을 구현했습니다.
</p>
<br/>


### <p align="center" style="text-decoration:underline">About Developer</p>

**<p align="center" style="font-size:15pt">김길모</p>**
<p align="center">:palm_tree: https://www.linkedin.com/in/gilmogim/ </p>
<p align="center">
Brigham Young University - Hawaii<br/>
Software Engineer<br/>
</p>
<br/>

## 💻: Code
- MVC 구조
  * Model
  ```Ruby 
    class Guestbook < ApplicationRecord
      has_many :comments  
      belongs_to :user
      has_one_attached :image
      validates :title, presence: true
    end

  ```
  * View
   ```Ruby 
    class Guestbook < ApplicationRecord
      has_many :comments  
      belongs_to :user
      has_one_attached :image
      validates :title, presence: true
    end
    
  ```
<img width="648" alt="Screen Shot 2021-11-02 at 3 14 19 PM" src="https://user-images.githubusercontent.com/59432666/139795404-aecb0e6d-c460-4a6b-9544-8a81b85bb2b6.png">

## :hammer_and_wrench: 사용된 기술
> + Ruby on Rails https://rubyonrails.org/
> + HTML & CSS

<br/>
