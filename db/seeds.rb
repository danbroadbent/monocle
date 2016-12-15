# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

Company.create(id: 1,
                name: "Granicus",
                website: "http://grancius.com",
                headquarters: "Denver, CO",
                products_services: "Computer Software",
                status: "approved",
                size: "51-200",
                industry_id: 1)
Location.create(street_address: "707 17th Street",
                street_address_2: "Suite 4000",
                phone: "720-240-9586",
                status: "approved",
                primary_contact: "Chris Downard",
                company_id: 1,
                zip_code: "80202",
                city: "Denver",
                state: "CO")
Company.create(id: 2,
                name: "SpotX",
                website: "http://www.spotxchange.com",
                headquarters: "Denver, CO",
                products_services: "Software",
                status: "approved",
                size: "201-500",
                industry_id: 2)              )
Location.create(street_address: "11030 CirclePoint Road",
                street_address_2: "Suite 350",
                phone: "303.345.6650",
                status: "approved",
                primary_contact: "Allen Dove, CTIO",
                company_id: 2,
                zip_code: "80020",
                city: "Denver",
                state: "CO")
Company.create(id: 3,
                name: "MondoRobot",
                website: "www.mondorobot.com",
                headquarters: "Boulder, CO",
                products_services: "Digital Strategies, UI & UX Design, Video & Animation, Mobile & Tablet, Applications, Websites, Virtual Reality, Digital Installations, Augmented Reality, Social Experiences, Branding & Identities, Interactive Games",
                status: "approved",
                size: "11-50",
                industry_id: 3)
Location.create(street_address: "5445 Conestoga Court",
                street_address_2: "suite 200",
                phone: "303.800.2916",
                status: "approved",
                primary_contact: "Rebekah Pinter, HR & Talent Manager",
                company_id: 3,
                zip_code: "80301",
                city: "Boulder",
                state: "CO")
Company.create(id: 4,
                name: "Captain U",
                website: "http://captainu.com",
                headquarters: "San Francisco, CA",
                products_services: "Computer Software",
                status: "approved",
                size: "11-50",
                industry_id: 4)
Location.create(street_address: "910 Santa Fe Dr.",
                street_address_2: "",
                phone: "",
                status: "approved",
                primary_contact: "",
                company_id: 4,
                zip_code: "80204",
                city: "Denver",
                state: "CO")
Company.create(id: 5,
                name: "Wazee Digital",
                website: "https://www.wazeedigital.com/",
                headquarters: "Denver, CO",
                products_services: "cloud-based storage, access, and licensing for enterprise-scale video libraries",
                status: "approved",
                size: "51-200",
                industry_id: 5)
Location.create(street_address: "1515 Arapahoe Street Tower 3",
                street_address_2: "Suite 400",
                phone: "720-382-2869",
                status: "approved",
                primary_contact: "",
                company_id: 5,
                zip_code: "80202",
                city: "Denver",
                state: "CO")
Company.create(id: 6,
                name: "ParkiFi",
                website: "https://denver.parkifi.com/",
                headquarters: "Denver, CO",
                products_services: "Real time parking assistance",
                status: "approved",
                size: "11-50",
                industry_id: 6)
Location.create(street_address: "1451 Larimer St",
                street_address_2: "",
                phone: "724-256-7147",
                status: "approved",
                primary_contact: "",
                company_id: 6,
                zip_code: "80202",
                city: "Denver",
                state: "CO")

Company.create(id: 7,
                name: "Tokken",
                website: "http://tokken.com",
                headquarters: "Denver, CO",
                products_services: "Financial Products for the cannabis industry",
                status: "approved",
                size: "2-10",
                industry_id: 7)
Location.create(street_address: "383 Corona Street",
                street_address_2: "",
                phone: "720-237-9836",
                status: "approved",
                primary_contact: "Adam Healy",
                company_id: 7,
                zip_code: "80218",
                city: "Denver",
                state: "CO")
Company.create(id: 8,
                name: "GoSpotCheck",
                website: "http://gospotcheck.com",
                headquarters: "Denver, CO",
                products_services: "Web apps for field operations",
                status: "approved",
                size: "51-200",
                industry_id: 1)
Location.create(street_address: "1520 Market St",
                street_address_2: "",
                phone: "844-359-2502",
                status: "approved",
                primary_contact: "Erin Hallows",
                company_id: 8,
                zip_code: "80202",
                city: "Denver",
                state: "CO")
Company.create(id: 9,
                name: "Rachio",
                website: "http://rachio.com",
                headquarters: "Denver, CO",
                products_services: "Smart sprinklers",
                status: "approved",
                size: "11-50",
                industry_id: 8)
Location.create(street_address: "2040 Larimer St.",
                street_address_2: "",
                phone: "",
                status: "approved",
                primary_contact: "Kyle Hansen",
                company_id: 9,
                zip_code: "80205",
                city: "Denver",
                state: "CO")

Industry.create(id: 1, name: "Computer Software")
Industry.create(id: 2, name: "Internet")
Industry.create(id: 3, name: "Marketing and Advertising")
Industry.create(id: 4, name: "Sports")
Industry.create(id: 5, name: "Broadcast Media")
Industry.create(id: 6, name: "Transportation/Trucking/Railroad")
Industry.create(id: 7, name: "Financial Software")
Industry.create(id: 8, name: "Internet of Things")
Industry.create(id: 9, name: "")
Industry.create(id: 10, name: "")
Industry.create(id: 11, name: "")
Industry.create(id: 12, name: "")
