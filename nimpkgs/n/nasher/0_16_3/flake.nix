{
  description = ''A build tool for Neverwinter Nights projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nasher-0_16_3.flake = false;
  inputs.src-nasher-0_16_3.owner = "squattingmonk";
  inputs.src-nasher-0_16_3.ref   = "refs/tags/0.16.3";
  inputs.src-nasher-0_16_3.repo  = "nasher.nim";
  inputs.src-nasher-0_16_3.type  = "github";
  
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
  
  inputs."nwnt".dir   = "nimpkgs/n/nwnt";
  inputs."nwnt".owner = "riinr";
  inputs."nwnt".ref   = "flake-pinning";
  inputs."nwnt".repo  = "flake-nimble";
  inputs."nwnt".type  = "github";
  inputs."nwnt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_16_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nasher-0_16_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}