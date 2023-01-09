module Pages.Home_ exposing (page)

import Html exposing (..)
import Html.Attributes as Attr exposing (class)
import View exposing (View)


page : View msg
page =
    { title = "Wondering & Tinkering"
    , body =
        [ viewHeader
        ]
    }


viewHeader : Html msg
viewHeader =
    nav [ class "navbar navbar-light" ]
        [ div [ class "container" ]
            [ a [ class "navbar-brand" ]
                [ text "Ttecho's blog" ]
            , ul [ class "navbar-nav pull-xs-right" ] <| viewMenu
            ]
        ]


viewMenu : List (Html msg)
viewMenu =
    [ div [ class "navbar-nav nav-item" ] [ text "about" ]
    , div [ class "navbar-nav nav-item" ] [ text "writings" ]
    , div [ class "navbar-nav nav-item" ] [ text "music" ]
    , div [ class "navbar-nav nav-item" ] [ text "code" ]
    ]
