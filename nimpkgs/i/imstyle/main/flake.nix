{
  description = ''A nice way to manage your ImGui application's style'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imstyle-main.flake = false;
  inputs.src-imstyle-main.ref   = "refs/heads/main";
  inputs.src-imstyle-main.owner = "Patitotective";
  inputs.src-imstyle-main.repo  = "ImStyle";
  inputs.src-imstyle-main.type  = "github";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_5";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs".owner = "nim-nix-pkgs";
  inputs."niprefs".ref   = "master";
  inputs."niprefs".repo  = "niprefs";
  inputs."niprefs".dir   = "0_3_4";
  inputs."niprefs".type  = "github";
  inputs."niprefs".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imstyle-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-imstyle-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}