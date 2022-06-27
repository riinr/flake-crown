{
  description = ''Store and manage preferences dynamically in a text file within table-like structure.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niprefs-0_3_4.flake = false;
  inputs.src-niprefs-0_3_4.ref   = "refs/tags/0.3.4";
  inputs.src-niprefs-0_3_4.owner = "Patitotective";
  inputs.src-niprefs-0_3_4.repo  = "niprefs";
  inputs.src-niprefs-0_3_4.type  = "github";
  
  inputs."toml_serialization".owner = "nim-nix-pkgs";
  inputs."toml_serialization".ref   = "master";
  inputs."toml_serialization".repo  = "toml_serialization";
  inputs."toml_serialization".dir   = "master";
  inputs."toml_serialization".type  = "github";
  inputs."toml_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toml_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niprefs-0_3_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-niprefs-0_3_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}