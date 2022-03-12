{
  description = ''Neverwinter Nights 1 data accessor library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neverwinter-1_5_2.flake = false;
  inputs.src-neverwinter-1_5_2.owner = "niv";
  inputs.src-neverwinter-1_5_2.ref   = "refs/tags/1.5.2";
  inputs.src-neverwinter-1_5_2.repo  = "neverwinter.nim";
  inputs.src-neverwinter-1_5_2.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_5_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-neverwinter-1_5_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}