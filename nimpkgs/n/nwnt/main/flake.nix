{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwnt-main.flake = false;
  inputs.src-nwnt-main.owner = "WilliamDraco";
  inputs.src-nwnt-main.ref   = "refs/heads/main";
  inputs.src-nwnt-main.repo  = "NWNT";
  inputs.src-nwnt-main.type  = "github";
  
  inputs."neverwinter".dir   = "nimpkgs/n/neverwinter";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".ref   = "flake-pinning";
  inputs."neverwinter".repo  = "flake-nimble";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwnt-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nwnt-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}