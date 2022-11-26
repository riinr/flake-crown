{
  description = ''Render LaTeX math as multiline Unicode text'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-matext-2022_9_3.flake = false;
  inputs.src-matext-2022_9_3.ref   = "2022.9.3";
  inputs.src-matext-2022_9_3.owner = "~xigoi";
  inputs.src-matext-2022_9_3.repo  = "matext";
  inputs.src-matext-2022_9_3.type  = "sourcehut";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_32";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."honeycomb".owner = "nim-nix-pkgs";
  inputs."honeycomb".ref   = "master";
  inputs."honeycomb".repo  = "honeycomb";
  inputs."honeycomb".dir   = "v0_1_2";
  inputs."honeycomb".type  = "github";
  inputs."honeycomb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."honeycomb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-matext-2022_9_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-matext-2022_9_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}