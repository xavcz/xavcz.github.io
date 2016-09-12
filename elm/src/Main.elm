module Main exposing (..)

import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

type alias Model =
  { email : String
  , firstname : String
  }

type alias Msg =
  { operation : String
  , data : Int
  }

initialModel : Model
initialModel = 
  { email = ""
  , firstname = ""
  }

view : Model -> Html Msg
view model =
  div [ class "App" ]
    [ div [ class "Hero" ]
      [ div [ class "Header Header--white" ]
        [ div [ class "Header__main" ]
          [ text "Consultant, Fullstack Javascript Engineer"
          ]
        , span [ class "Header__meta" ]
          [ text "I build modern webapps to help SaaS businesses become more profitable." ]
        ]
      , div [ class "Hero__picture" ]
        [ img [ alt "Rocket consulting", src "https://res.cloudinary.com/xavcz/image/upload/v1473680138/rocket_b0atyx.png" ]
          []
        ]
      ]
    , div [ class "App__me" ]
      [ img [ alt "Me", src "https://res.cloudinary.com/xavcz/image/upload/v1473680137/me_srabkd.png" ]
        []
      , div [ class "Header Header--both" ]
        [ div [ class "Header__main" ]
          [ text "Hello, I'm Xavier Cazalot" ]
        , span [ class "Header__meta" ]
          [ text "I’m an entrepreneur and a software engineer." ]
        ]
      ]
    , div [ class "Benefits" ]
      [ div [ class "Benefits__block" ]
        [ span [ class "Benefits__title" ]
          [ text "Business Driven Developer" ]
        , span [ class "Benefits__details" ]
          [ text "My job is firstly to understand the underlying problems your business is facing, and then providing a solution which fits your needs." ]
        ]
      , div [ class "Benefits__block" ]
        [ span [ class "Benefits__title" ]
          [ text "Engineering At Core" ]
        , span [ class "Benefits__details" ]
          [ text "I come from a mechanical and industrial engineering background: my products are built with the right structure to solve the right problem." ]
        ]
      , div [ class "Benefits__block" ]
        [ span [ class "Benefits__title" ]
          [ text "Open-Source Contributor" ]
        , span [ class "Benefits__details" ]
          [ text "I believe that the goal is to learn. Being part of Telescope core team, the biggest Meteor + React open-source app, helps me achieve that." ]
        ]
      ]
    , div [ class "Testimonial" ]
      [ div [ class "PictureListItem" ]
        [ div [ class "PictureListItem__picture" ]
          [ img [ alt "Satisfied Client", class "PictureListItem__picture--with-border", src "https://res.cloudinary.com/xavcz/image/upload/v1473680138/testimonial-0_klsjqz.png" ]
            []
          ]
        , div [ class "PictureListItem__content" ]
          [ div [ class "PictureListItem__text" ]
            [ text "Xavier is an excellent web developer supported by an entrepreneur mindset. He remains always watchful on the legitimacy of a functional evolution compared to business benefits. This is extremely useful and effective during the design process." ]
          , div [ class "PictureListItem__meta" ]
            [ text "— Aurélien Basille, CTO @ Cavacave" ]
          ]
        ]
      ]
    , div [ class "Stack" ]
      [ div [ class "Header Header--dark" ]
        [ div [ class "Header__main" ]
          [ text "Your business deserves the right tools" ]
        , span [ class "Header__meta" ]
          [ text "You may recognize your needs in this subset of my toolbox." ]
        ]
      , div [ class "PictureListItem" ]
        [ div [ class "PictureListItem__picture" ]
          [ img [ alt "React", class "", src "https://res.cloudinary.com/xavcz/image/upload/v1473680136/react_uhbbzg.png" ]
            []
          ]
        , div [ class "PictureListItem__content" ]
          [ div [ class "PictureListItem__text" ]
            [ text "React is a clever library for structuring the and managing the data flow. Combined with Redux, a predictable state container for JavaScript apps, it is infinitely easier to build great web applications." ]
          ]
        ]
      , div [ class "PictureListItem" ]
        [ div [ class "PictureListItem__picture" ]
          [ img [ alt "GraphQL", class "", src "https://res.cloudinary.com/xavcz/image/upload/v1473680136/graphql_vll4qz.png" ]
            []
          ]
        , div [ class "PictureListItem__content" ]
          [ div [ class "PictureListItem__text" ]
            [ text "GraphQL presents new ways for clients to fetch data by focusing on the needs of product developers and client applications. Compared to traditional approaches such as REST, GraphQL is much more efficient." ]
          ]
        ]
      , div [ class "PictureListItem" ]
        [ div [ class "PictureListItem__picture" ]
          [ img [ alt "Meteor", class "", src "https://res.cloudinary.com/xavcz/image/upload/v1473680136/meteor_xde2h5.png" ]
            []
          ]
        , div [ class "PictureListItem__content" ]
          [ div [ class "PictureListItem__text" ]
            [ text "Meteor eases the pain of building great web applications when used as the centerpiece of an architectural stack. It allows to concentrate on developing business value and validate assumptions quickly." ]
          ]
        ]
      ]
    , div [ class "Testimonial" ]
      [ div [ class "PictureListItem" ]
        [ div [ class "PictureListItem__picture" ]
          [ img [ alt "Satisfied Client", class "PictureListItem__picture--with-border", src "https://res.cloudinary.com/xavcz/image/upload/v1473680139/testimonial-1_ca1itt.png" ]
            []
          ]
        , div [ class "PictureListItem__content" ]
          [ div [ class "PictureListItem__text" ]
            [ text "Resourceful and energetic, Xavier is passionated by choosing the right tools, setting them up, and teaching people how to use them. He has the perfect skills to efficiently bootstrap any project." ]
          , div [ class "PictureListItem__meta" ]
            [ text "— Maxime Pico, Managing Director @ Startup42" ]
          ]
        ]
      ]
    , div [ id "mc_embed_signup" ]
      [ Html.form [ action "//hacklearnmake.us13.list-manage.com/subscribe/post?u=9beb9bd4162802837ea34bb53&amp;id=1c43f2f329", class "CallToAction", id "mc-embedded-subscribe-form", method "post", name "mc-embedded-subscribe-form", attribute "novalidate" "", target "_blank" ]
        [ input [ class "required email", id "mce-FNAME", name "FNAME", placeholder "Your Firstname", type' "text" ]
          []
        , input [ class "required email", id "mce-EMAIL", name "EMAIL", placeholder "Your Email", type' "email" ]
          []
        , input [ class "CallToAction__submit", id "mc-embedded-subscribe", name "subscribe", type' "submit", value "Let's go to work!" ]
          []
        ]
      ]
    , div [ class "Testimonial" ]
      [ div [ class "PictureListItem" ]
        [ div [ class "PictureListItem__picture" ]
          [ img [ alt "Satisfied Client", class "PictureListItem__picture--with-border", src "https://res.cloudinary.com/xavcz/image/upload/v1473680139/testimonial-2_ngaqbt.png" ]
            []
          ]
        , div [ class "PictureListItem__content" ]
          [ div [ class "PictureListItem__text" ]
            [ text "Xavier has a very great attitude as a developer: he always wants to deliver the best results. When we discuss the next features/assignment we would like him to work on, he actively thinks along with us to help for deciding how to tackle our current problems." ]
          , div [ class "PictureListItem__meta" ]
            [ text "— Chris de Rouck, CTO @ iDronect" ]
          ]
        ]
      ]
    ]

update : Msg -> Model -> Model
update msg model =
  model

main =
  Html.beginnerProgram
    { view = view
    , update = update
    , model = initialModel
    }