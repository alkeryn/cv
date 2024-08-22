#import "./lib.typ": *
#show : template
#set text(size: 0.98em)

= #text(size: 25pt)[Pierre-Louis Braun]
#text(size: 15pt)[Software Engineer]

#[
#set text(size: 0.9em)
#grid(
columns: 2,
gutter: 2em
)[
Born on July 1998\
Mulhouse, France\
#link("mailto:plbraundev@gmail.com")\
+33631036304
][
    #link("github.com/alkeryn")\
    #link("linkedin.com/in/pierre-louis-braun98/")
]
]

#show heading.where(level: 1) : set text(nicered)

#place(top + right, dy: -0.5cm)[#circleclip(image("IMG_1518_croped_small.jpg", height:100%), 2.2cm)]


= Skills:

#move(dx: -0.8em)[
#set text(size: 0.8em)
#set list(indent: 1em)
#grid(columns: 2)[
#set list(indent: 0.5em, marker: none)
#set align(right)
- Languages:
-
-
- Databases:
- Network:
- Web:
- Misc:
][
        - *Rust*, *Python*, *Linux*, *Bash*, *C*, *C++*, *Nix*
        - KVM, QEMU, Proxmox, Libvirt, LXC, LXD, Docker, Kubernetes, Nix
        - PostgreSQL, MySQL, CockroachDB, ScyllaDB, Redis, SQLite, MongoDB
        - nmap, scapy, ss, ip, netcat, SSH, TCP/IP and UDP knowledge
        - Nginx, Apache, *JavaScript*, PHP, HTML5, CSS, WebAssembly
        - Reverse engineering, static & dynamic analysis, binary exploitation, writing exploits\
          Data-oriented programming/design, Machine learning, Arch Linux, NixOS, *Git*
]]

= Work Experience:

#work("Hut8", "Senior Software Engineer", "January 2024 - Now")[
    - Writing high performance software to orchestrate hundred of thousands of computers in *Rust*
      - Including gathering data from those computers, doing thousands of requests per second
    - Writing software to do integrity checks on databases
    - Writing software to backfill data from one database to another (influx, bigquery)
    - Writing software to curtail computers based on power price and other factors.
    - On-call Response to emergencies.
]

#work("Vozforge", "Founder and Software Engineer", "May 2020 - Now")[
    - Wrote an app that allows using an Android tablet as a graphic tablet on Windows and Linux,
        this involved writing drivers#cnt("w") and a custom TCP and UDP binary protocol from scratch.
        The server was initially written in *C++* and later rewritten in *Rust*, the client, running on the tablet,
        was written in *Kotlin*.
    - Writing a modular *Rust* backend framework using *Actix*, this includes modules and libraries for authentication, geospatial queries#cnt("w"), account management, messaging, notifications, and more,
        the databases used are *PostgreSQL*, *ScyllaDB*#cnt("w"), and *Redis*.
    - Wrote a visualization web UI to compare Google *S2* to Uber *H3* using WebAssembly

        #set text(size: 0.8em)
        + *KMDF* on Windows, libinput on Linux
        + Using Google S2 cells and ScyllaDB, the library allows for horizontally scalable realtime geospatial queries such as "getting 100 users in a radius of 100km ordered by distance"
        + ScyllaDB is a C++ rewrite of *CassandraDB* made by mostly the same people but with high performance as a goal.
]

#work("Everdreamsoft", "Full Stack Developer", "October 2022 - July 2023")[
    - Optimization and adding features to an in-house database
    - Wrote benchmarking tools for prototyping optimizations | *Rust*
    - Wrote a migration tool for blockchain data from *MongoDB* to *PostgreSQL* using *Rust*
    - Lead backend developer for the ChainChronicles project, an NFT subscription service | *PHP*
    - Developed a *Go* microservice for account synchronization with Stripe's API
    - Contributed to the Wakweli blockchain MVP | *Go, PostgreSQL*
    - Developed an in-house secret sharing application using Shamir's Secret Sharing and AES-GCM | *Go, Wails, PostgreSQL*
    - Researched Ory Kratos authentication service
]

#v(0.5em)
#columns(3)[
= Education:

#work("Computer Science", "UHA 4.0 (Mulhouse, France)", "2017-2020")[]

#colbreak()
#set text(size: 0.8em)
= Achievements :

One of the winners of the 2019 DGSE Richelieu hacking CTF.
It involved steganography, cryptography,
reverse engineering and binary exploitation

= Languages :

French and English

#colbreak()
= References:
Available upon request
= Personal Project:
Game server scanner written in *Rust* that can scan and get metadata of\
> 200k servers in < 10s across the whole IPv4 range.

#v(1fr)
#align(right)[see older work experiences on #link(<old>)[page 2]]
]

#pagebreak()

= Older Work Experience: <old>

#work("PSA Finance", "Cybersecurity Consultant and Manager / Executive", "July 2022 - October 2022")[
    - Worked as a Cybersecurity Consultant and Manager for the *PSA Finance* group (the bank of *Peugeot* and *Citroën*) as a service provider from *Sogeti* (part of *Capgemini*)
    - Conducted network vulnerability scans on thousands of servers in the local network using *Qualys*
    - Performed penetration testing and analyzed third-party penetration test reports
    - Wrote vulnerability reports and mitigation strategies based on the aforementioned penetration tests
    - Developed a *Python* tool to match vulnerabilities from the NIST NVD vulnerability database
]
