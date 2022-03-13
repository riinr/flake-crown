{
  description = ''apache arrow bindings for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimarrow-master.flake = false;
  inputs.src-nimarrow-master.owner = "emef";
  inputs.src-nimarrow-master.ref   = "refs/heads/master";
  inputs.src-nimarrow-master.repo  = "nimarrow";
  inputs.src-nimarrow-master.type  = "github";
  
  inputs."nimarrow_glib".owner = "nim-nix-pkgs";
  inputs."nimarrow_glib".ref   = "master";
  inputs."nimarrow_glib".repo  = "nimarrow_glib";
  inputs."nimarrow_glib".type  = "github";
  inputs."nimarrow_glib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimarrow-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}