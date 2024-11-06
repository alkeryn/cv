#let template(doc) = {
    set text(
        size: 10pt,
        // font: "Liberation Serif"
        font: "DejaVu Sans"
    )
    set page(
        paper: "a4",
        margin: (x: 1.5cm, y: 1cm),
            // footer: [
            //     #h(1fr)
            //     #counter(page).display(
            //         "1/1",
            //     )
            // ]
    )
    set document(title:"Curriculum Vitae")

    // place(bottom + right, dx: 2.5em, dy: 2em)[#counter(page).display("1/1")]
    show link : set text(rgb("#af00af"))

    set par(
        justify: true,
        first-line-indent: 3pt
    )
    set list(indent: 2em, marker: text(rgb("505050"))[•])

    [#doc]
}

#let circleclip(arg, radius, ..args) = {
    let h = radius*2
    [ #box(clip: true, radius: radius, height: h, width: h, arg, ..args) ]
}

#let cnt(w) = {
    let cnt = counter(w)
    cnt.step()
    context(
      super(cnt.display())
    )
}

#let nicegray = rgb("#909090")
#let nicered = rgb("#73130d")

#let work(
    where,
    role,
    date,
    body) = {
    [
        == #where
        #text(nicegray)[#role]\
        #text(nicegray)[#date]
        #set text(size: 0.8em)
        #body
    ]
}
