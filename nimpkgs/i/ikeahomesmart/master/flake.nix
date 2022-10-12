{
  description = ''IKEA Home Smart library for speaking to smart bulbs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ikeahomesmart-master.flake = false;
  inputs.src-ikeahomesmart-master.ref   = "refs/heads/master";
  inputs.src-ikeahomesmart-master.owner = "PMunch";
  inputs.src-ikeahomesmart-master.repo  = "ikeahomesmart";
  inputs.src-ikeahomesmart-master.type  = "github";
  
  inputs."coap".owner = "nim-nix-pkgs";
  inputs."coap".ref   = "master";
  inputs."coap".repo  = "coap";
  inputs."coap".dir   = "master";
  inputs."coap".type  = "github";
  inputs."coap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ikeahomesmart-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ikeahomesmart-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}