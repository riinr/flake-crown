{
  description = ''A Nim wrapper for the WooCommerce REST API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-woocommerce-api-nim-master.flake = false;
  inputs.src-woocommerce-api-nim-master.ref   = "refs/heads/master";
  inputs.src-woocommerce-api-nim-master.owner = "mrhdias";
  inputs.src-woocommerce-api-nim-master.repo  = "woocommerce-api-nim";
  inputs.src-woocommerce-api-nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-woocommerce-api-nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-woocommerce-api-nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}