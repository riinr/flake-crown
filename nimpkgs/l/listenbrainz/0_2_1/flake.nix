{
  description = ''Low-level multisync (C backend) and async (JS backend) bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-listenbrainz-0_2_1.flake = false;
  inputs.src-listenbrainz-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-listenbrainz-0_2_1.owner = "tandy1000";
  inputs.src-listenbrainz-0_2_1.repo  = "listenbrainz-nim";
  inputs.src-listenbrainz-0_2_1.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-0_2_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-listenbrainz-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}