{
  description = ''A very simple micro web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mike-master.flake = false;
  inputs.src-mike-master.owner = "ire4ever1190";
  inputs.src-mike-master.ref   = "refs/heads/master";
  inputs.src-mike-master.repo  = "mike";
  inputs.src-mike-master.type  = "github";
  
  inputs."httpx".dir   = "nimpkgs/h/httpx";
  inputs."httpx".owner = "riinr";
  inputs."httpx".ref   = "flake-pinning";
  inputs."httpx".repo  = "flake-nimble";
  inputs."httpx".type  = "github";
  inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocketx".dir   = "nimpkgs/w/websocketx";
  inputs."websocketx".owner = "riinr";
  inputs."websocketx".ref   = "flake-pinning";
  inputs."websocketx".repo  = "flake-nimble";
  inputs."websocketx".type  = "github";
  inputs."websocketx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocketx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mike-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mike-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}