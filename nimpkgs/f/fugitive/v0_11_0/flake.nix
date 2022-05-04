{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fugitive-v0_11_0.flake = false;
  inputs.src-fugitive-v0_11_0.ref   = "refs/tags/v0.11.0";
  inputs.src-fugitive-v0_11_0.owner = "haltcase";
  inputs.src-fugitive-v0_11_0.repo  = "fugitive";
  inputs.src-fugitive-v0_11_0.type  = "github";
  
  inputs."gara".owner = "nim-nix-pkgs";
  inputs."gara".ref   = "master";
  inputs."gara".repo  = "gara";
  inputs."gara".dir   = "master";
  inputs."gara".type  = "github";
  inputs."gara".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile".owner = "nim-nix-pkgs";
  inputs."tempfile".ref   = "master";
  inputs."tempfile".repo  = "tempfile";
  inputs."tempfile".dir   = "0_1_7";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unpack".owner = "nim-nix-pkgs";
  inputs."unpack".ref   = "master";
  inputs."unpack".repo  = "unpack";
  inputs."unpack".dir   = "master";
  inputs."unpack".type  = "github";
  inputs."unpack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unpack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_11_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fugitive-v0_11_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}