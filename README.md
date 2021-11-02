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
  * Model: Model을 통한 데이터 Association 및 Validation
  <br/>
  
  ```ruby   
    class Guestbook < ApplicationRecord
      has_many :comments  
      belongs_to :user
      has_one_attached :image
      validates :title, presence: true
    end
  ```
  * View: render을 이용한 코드 재사용

  <br/>
  <img width="121" alt="Screen Shot 2021-11-02 at 3 24 00 PM" src="https://user-images.githubusercontent.com/59432666/139796489-7a64e65b-220a-4239-bfae-d251ec799bad.png">
   
  ```ruby 
    <% title "Guestbooks" %>
    <%= render @guestbooks %>
    <%= link_to "New Guestbook", new_guestbook_path, class: "btn btn-primary" %>
    
  ```
  <br/>
  <img width="154" alt="Screen Shot 2021-11-02 at 3 30 53 PM" src="https://user-images.githubusercontent.com/59432666/139797215-c67c8723-b1b2-4ccd-a432-936adc1eb234.png">

  ```ruby 
    <div id ="guestbook_<%= guestbook.id %>" class="guestbook">
        <p><strong>Title:</strong> <%= link_to_unless_current guestbook.title, guestbook %></p>
        <p><strong>Content:</strong> <%= guestbook.content %></p>
        <p><strong>Date:</strong> <%= guestbook.date %></p>
    </div>
  ```
 

## :hammer_and_wrench: 사용된 기술
> + Ruby on Rails https://rubyonrails.org/
> + HTML & CSS

<br/>
