{
  description = ''Neverwinter Nights 1 data accessor library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neverwinter-1_4_3.flake = false;
  inputs.src-neverwinter-1_4_3.owner = "niv";
  inputs.src-neverwinter-1_4_3.ref   = "refs/tags/1.4.3";
  inputs.src-neverwinter-1_4_3.repo  = "neverwinter.nim";
  inputs.src-neverwinter-1_4_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-neverwinter-1_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}