{
  description = ''Encoder/decoder for blurhash algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-blurhash-v0_2_1.flake = false;
  inputs.src-blurhash-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-blurhash-v0_2_1.owner = "SolitudeSF";
  inputs.src-blurhash-v0_2_1.repo  = "blurhash";
  inputs.src-blurhash-v0_2_1.type  = "github";
  
  inputs."imageman".owner = "nim-nix-pkgs";
  inputs."imageman".ref   = "master";
  inputs."imageman".repo  = "imageman";
  inputs."imageman".dir   = "v0_8_2";
  inputs."imageman".type  = "github";
  inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-blurhash-v0_2_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-blurhash-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}