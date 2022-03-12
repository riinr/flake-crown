{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-listenbrainz-master.flake = false;
  inputs.src-listenbrainz-master.owner = "tandy1000";
  inputs.src-listenbrainz-master.ref   = "refs/heads/master";
  inputs.src-listenbrainz-master.repo  = "listenbrainz-nim";
  inputs.src-listenbrainz-master.type  = "gitlab";
  
  inputs."jsony".dir   = "nimpkgs/j/jsony";
  inputs."jsony".owner = "riinr";
  inputs."jsony".ref   = "flake-pinning";
  inputs."jsony".repo  = "flake-nimble";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodejs".dir   = "nimpkgs/n/nodejs";
  inputs."nodejs".owner = "riinr";
  inputs."nodejs".ref   = "flake-pinning";
  inputs."nodejs".repo  = "flake-nimble";
  inputs."nodejs".type  = "github";
  inputs."nodejs".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodejs".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/alaviss/union".dir   = "nimpkgs/h/https://github.com/alaviss/union";
  inputs."https://github.com/alaviss/union".owner = "riinr";
  inputs."https://github.com/alaviss/union".ref   = "flake-pinning";
  inputs."https://github.com/alaviss/union".repo  = "flake-nimble";
  inputs."https://github.com/alaviss/union".type  = "github";
  inputs."https://github.com/alaviss/union".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/alaviss/union".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/tandy-1000/uniony".dir   = "nimpkgs/h/https://github.com/tandy-1000/uniony";
  inputs."https://github.com/tandy-1000/uniony".owner = "riinr";
  inputs."https://github.com/tandy-1000/uniony".ref   = "flake-pinning";
  inputs."https://github.com/tandy-1000/uniony".repo  = "flake-nimble";
  inputs."https://github.com/tandy-1000/uniony".type  = "github";
  inputs."https://github.com/tandy-1000/uniony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/tandy-1000/uniony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-listenbrainz-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}