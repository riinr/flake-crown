{
  description = ''a down to earth webframework in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-servy-master.flake = false;
  inputs.src-servy-master.owner = "xmonader";
  inputs.src-servy-master.ref   = "refs/heads/master";
  inputs.src-servy-master.repo  = "nim-servy";
  inputs.src-servy-master.type  = "github";
  
  inputs."terminaltables".dir   = "nimpkgs/t/terminaltables";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".ref   = "flake-pinning";
  inputs."terminaltables".repo  = "flake-nimble";
  inputs."terminaltables".type  = "github";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws".dir   = "nimpkgs/w/ws";
  inputs."ws".owner = "riinr";
  inputs."ws".ref   = "flake-pinning";
  inputs."ws".repo  = "flake-nimble";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-servy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-servy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}