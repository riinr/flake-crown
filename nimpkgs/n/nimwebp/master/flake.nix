{
  description = ''Webp encoder and decoder bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwebp-master.flake = false;
  inputs.src-nimwebp-master.owner = "tormund";
  inputs.src-nimwebp-master.ref   = "refs/heads/master";
  inputs.src-nimwebp-master.repo  = "nimwebp";
  inputs.src-nimwebp-master.type  = "github";
  
  inputs."nimpng".owner = "nim-nix-pkgs";
  inputs."nimpng".ref   = "master";
  inputs."nimpng".repo  = "nimpng";
  inputs."nimpng".type  = "github";
  inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/yglukhov/clurp".owner = "nim-nix-pkgs";
  inputs."https://github.com/yglukhov/clurp".ref   = "master";
  inputs."https://github.com/yglukhov/clurp".repo  = "https://github.com/yglukhov/clurp";
  inputs."https://github.com/yglukhov/clurp".type  = "github";
  inputs."https://github.com/yglukhov/clurp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/clurp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwebp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimwebp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}