{
  description = ''apache arrow bindings for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimarrow-v0_1_3.flake = false;
  inputs.src-nimarrow-v0_1_3.owner = "emef";
  inputs.src-nimarrow-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-nimarrow-v0_1_3.repo  = "nimarrow";
  inputs.src-nimarrow-v0_1_3.type  = "github";
  
  inputs."nimarrow_glib".owner = "nim-nix-pkgs";
  inputs."nimarrow_glib".ref   = "master";
  inputs."nimarrow_glib".repo  = "nimarrow_glib";
  inputs."nimarrow_glib".type  = "github";
  inputs."nimarrow_glib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimarrow-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}