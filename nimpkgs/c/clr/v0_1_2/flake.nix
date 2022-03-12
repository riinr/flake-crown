{
  description = ''Get information about colors and convert them in the command line'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-clr-v0_1_2.flake = false;
  inputs.src-clr-v0_1_2.owner = "Calinou";
  inputs.src-clr-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-clr-v0_1_2.repo  = "clr";
  inputs.src-clr-v0_1_2.type  = "github";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-clr-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-clr-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}