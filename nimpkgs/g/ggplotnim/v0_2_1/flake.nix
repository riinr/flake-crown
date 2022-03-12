{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_2_1.flake = false;
  inputs.src-ggplotnim-v0_2_1.owner = "Vindaar";
  inputs.src-ggplotnim-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-ggplotnim-v0_2_1.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_2_1.type  = "github";
  
  inputs."https://github.com/vindaar/seqmath".dir   = "nimpkgs/h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".ref   = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".repo  = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger".dir   = "nimpkgs/g/ginger";
  inputs."ginger".owner = "riinr";
  inputs."ginger".ref   = "flake-pinning";
  inputs."ginger".repo  = "flake-nimble";
  inputs."ginger".type  = "github";
  inputs."ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."persvector".dir   = "nimpkgs/p/persvector";
  inputs."persvector".owner = "riinr";
  inputs."persvector".ref   = "flake-pinning";
  inputs."persvector".repo  = "flake-nimble";
  inputs."persvector".type  = "github";
  inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell".dir   = "nimpkgs/s/shell";
  inputs."shell".owner = "riinr";
  inputs."shell".ref   = "flake-pinning";
  inputs."shell".repo  = "flake-nimble";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}