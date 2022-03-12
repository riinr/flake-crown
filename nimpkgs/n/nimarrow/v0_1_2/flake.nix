{
  description = ''apache arrow bindings for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimarrow-v0_1_2.flake = false;
  inputs.src-nimarrow-v0_1_2.owner = "emef";
  inputs.src-nimarrow-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-nimarrow-v0_1_2.repo  = "nimarrow";
  inputs.src-nimarrow-v0_1_2.type  = "github";
  
  inputs."nimarrow_glib".dir   = "nimpkgs/n/nimarrow_glib";
  inputs."nimarrow_glib".owner = "riinr";
  inputs."nimarrow_glib".ref   = "flake-pinning";
  inputs."nimarrow_glib".repo  = "flake-nimble";
  inputs."nimarrow_glib".type  = "github";
  inputs."nimarrow_glib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimarrow-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}