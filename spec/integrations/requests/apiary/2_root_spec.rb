require "integrations/requests/apiary/spec_helper"
describe "root" do
  include_context "use core context service"
  it "root" do
  # --
  # Root
  # --
  # 
  # The root JSON lists all the resources available through the Lims Support Application and all the actions which can be performed. 
  # A resource responds to all the actions listed under its `actions` elements.
  # Consider this URL and the JSON response like the entry point for S2 Lims Support Application. All the other interactions through the 
  # Support App can be performed browsing this JSON response.

    header('Accept', 'application/json')
    header('Content-Type', 'application/json')

    response = get "/"
    response.status.should == 200
    response.body.should match_json <<-EOD
    {
    "actions": {
        "read": "http://example.org/"
    },
    "uuid_resources": {
        "actions": {
            "create": "http://example.org/uuid_resources",
            "read": "http://example.org/uuid_resources",
            "first": "http://example.org/uuid_resources/page=1",
            "last": "http://example.org/uuid_resources/page=-1"
        }
    },
    "barcodes": {
        "actions": {
            "create": "http://example.org/barcodes",
            "read": "http://example.org/barcodes",
            "first": "http://example.org/barcodes/page=1",
            "last": "http://example.org/barcodes/page=-1"
        }
    },
    "searches": {
        "actions": {
            "create": "http://example.org/searches",
            "read": "http://example.org/searches",
            "first": "http://example.org/searches/page=1",
            "last": "http://example.org/searches/page=-1"
        }
    },
    "kits": {
        "actions": {
            "create": "http://example.org/kits",
            "read": "http://example.org/kits",
            "first": "http://example.org/kits/page=1",
            "last": "http://example.org/kits/page=-1"
        }
    },
    "label_printers": {
        "actions": {
            "create": "http://example.org/label_printers",
            "read": "http://example.org/label_printers",
            "first": "http://example.org/label_printers/page=1",
            "last": "http://example.org/label_printers/page=-1"
        }
    },
    "templates": {
        "actions": {
            "create": "http://example.org/templates",
            "read": "http://example.org/templates",
            "first": "http://example.org/templates/page=1",
            "last": "http://example.org/templates/page=-1"
        }
    },
    "create_barcodes": {
        "actions": {
            "create": "http://example.org/actions/create_barcode"
        }
    },
    "bulk_create_barcodes": {
        "actions": {
            "create": "http://example.org/actions/bulk_create_barcode"
        }
    },
    "create_searches": {
        "actions": {
            "create": "http://example.org/actions/create_search"
        }
    },
    "create_labels": {
        "actions": {
            "create": "http://example.org/actions/create_label"
        }
    },
    "create_kits": {
        "actions": {
            "create": "http://example.org/actions/create_kit"
        }
    },
    "create_label_printers": {
        "actions": {
            "create": "http://example.org/actions/create_label_printer"
        }
    },
    "update_label_printers": {
        "actions": {
            "create": "http://example.org/actions/update_label_printer"
        }
    },
    "print_labels": {
        "actions": {
            "create": "http://example.org/actions/print_label"
        }
    },
    "update_labels": {
        "actions": {
            "create": "http://example.org/actions/update_label"
        }
    },
    "revision": 3
}
    EOD

  end
end
