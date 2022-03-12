{
  description = ''A build tool for Neverwinter Nights projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nasher-0_12_1.flake = false;
  inputs.src-nasher-0_12_1.owner = "squattingmonk";
  inputs.src-nasher-0_12_1.ref   = "refs/tags/0.12.1";
  inputs.src-nasher-0_12_1.repo  = "nasher.nim";
  inputs.src-nasher-0_12_1.type  = "github";
  
  inputs."neverwinter".dir   = "nimpkgs/n/neverwinter";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".ref   = "flake-pinning";
  inputs."neverwinter".repo  = "flake-nimble";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob".dir   = "nimpkgs/g/glob";
  inputs."glob".owner = "riinr";
  inputs."glob".ref   = "flake-pinning";
  inputs."glob".repo  = "flake-nimble";
  inputs."glob".type  = "github";
  inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_12_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nasher-0_12_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}