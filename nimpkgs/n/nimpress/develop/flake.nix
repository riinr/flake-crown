{
  description = ''Fast and simple calculation of polygenic scores'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpress-develop.flake = false;
  inputs.src-nimpress-develop.owner = "mpinese";
  inputs.src-nimpress-develop.ref   = "refs/heads/develop";
  inputs.src-nimpress-develop.repo  = "nimpress";
  inputs.src-nimpress-develop.type  = "github";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts".dir   = "nimpkgs/h/hts";
  inputs."hts".owner = "riinr";
  inputs."hts".ref   = "flake-pinning";
  inputs."hts".repo  = "flake-nimble";
  inputs."hts".type  = "github";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lapper".dir   = "nimpkgs/l/lapper";
  inputs."lapper".owner = "riinr";
  inputs."lapper".ref   = "flake-pinning";
  inputs."lapper".repo  = "flake-nimble";
  inputs."lapper".type  = "github";
  inputs."lapper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpress-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimpress-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}