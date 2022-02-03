{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
  inputs.src-awsS3-v1_0_1.flake = false;
  inputs.src-awsS3-v1_0_1.type = "github";
  inputs.src-awsS3-v1_0_1.owner = "ThomasTJdev";
  inputs.src-awsS3-v1_0_1.repo = "nim_awsS3";
  inputs.src-awsS3-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."sigv4".url = "path:../../../s/sigv4";
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  
  inputs."awssts".url = "path:../../../a/awssts";
  inputs."awssts".type = "github";
  inputs."awssts".owner = "riinr";
  inputs."awssts".repo = "flake-nimble";
  inputs."awssts".ref = "flake-pinning";
  inputs."awssts".dir = "nimpkgs/a/awssts";

  outputs = { self, nixpkgs, src-awsS3-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awsS3-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awsS3-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}