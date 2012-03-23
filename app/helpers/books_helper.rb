# -*- coding: utf-8 -*-
module BooksHelper
  def links_for(book)
    links = []
    links << link_to( "修正", [ :edit, book ], :class => "btn btn-success")
    if book.checked_out? 
      links << link_to( "在庫", [ :check_in, book ], :method => :put, :class => "btn btn-inverse")
    else
      links << link_to( "貸出中", [ :check_out, book ], :method => :put, :class => "btn btn-inverse")
    end
    links << delete_link( book )
    raw(links.join(" "))
  end
end
