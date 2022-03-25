{
  description = ''Creating toInterface macro.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-interface_implements-0_2_3.flake = false;
  inputs.src-interface_implements-0_2_3.ref   = "refs/tags/0.2.3";
  inputs.src-interface_implements-0_2_3.owner = "itsumura-h";
  inputs.src-interface_implements-0_2_3.repo  = "nim-interface-implements";
  inputs.src-interface_implements-0_2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-interface_implements-0_2_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-interface_implements-0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}